FROM 156916773321.dkr.ecr.ap-south-1.amazonaws.com/sreee-buggyapp-base:latest

WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY . .

ENV RAILS_ENV=production

EXPOSE 3000

#COPY entrypoint.sh /usr/bin/entrypoint.sh
#RUN chmod +x /usr/bin/entrypoint.sh

#ENTRYPOINT ["/usr/bin/entrypoint.sh"]

CMD ["rails", "server", "-e", "production", "-b", "0.0.0.0"]


